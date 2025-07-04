local fcitx5_au = vim.api.nvim_create_augroup("Fcitx5Settings", { clear = true })
local prev_fcitx5_status= nil
-- 直接入力用のキーボードレイアウト
local direct_im = "keyboard-jp"

function get_fcitx5_status()
  return vim.fn.system("fcitx5-remote -n"):gsub("\n$", "")
end

-- fcitx5上で動いているimを無効化する関数
function disable_im()
  -- debug用にnotifyを出す
  vim.notify("fcitx5 status: " .. get_fcitx5_status(), vim.log.levels.INFO)
  if get_fcitx5_status() ~= direct_im then
    prev_fcitx5_status = get_fcitx5_status()
    vim.fn.system("fcitx5-remote -c")
  end
end

function enable_im()
  if prev_fcitx5_status and get_fcitx5_status() == direct_im then
    vim.fn.system("fcitx5-remote -s " .. prev_fcitx5_status)
    prev_fcitx5_status = nil
  end
end


vim.api.nvim_create_autocmd("InsertLeave", {
  group = fcitx5_au,
  pattern = "*",
  callback = disable_im,
})

vim.api.nvim_create_autocmd("InsertEnter", {
  group = fcitx5_au,
  pattern = "*",
  callback = enable_im
})
