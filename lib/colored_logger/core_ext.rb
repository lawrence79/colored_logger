String.class_eval do

  #colors
  def black
    "\033[0;30m#{self}\033[0;30m"
  end

  def red
    "\033[0;31m#{self}\033[0;31m"
  end

  def green
    "\033[0;32m#{self}\033[0;32m"
  end

  def yellow
    "\033[0;33m#{self}\033[0;33m"
  end

  def blue
    "\033[0;34m#{self}\033[0;34m"
  end

  def magenta
    "\033[0;35m#{self}\033[0;35m"
  end

  def cyan
    "\033[0;36m#{self}\033[0;36m"
  end

  def white
    "\033[0;37m#{self}\033[0;37m"
  end
end
