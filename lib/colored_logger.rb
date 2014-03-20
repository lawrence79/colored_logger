require "colored_logger/version"
require "colored_logger/core_ext"
require 'colored_logger/railtie' if defined?(Rails)

module ColoredLogger

  COLORS = {
    'black'   => 30,
    'red'     => 31,
    'green'   => 32,
    'yellow'  => 33,
    'blue'    => 34,
    'magenta' => 35,
    'cyan'    => 36,
    'white'   => 37
  }

  BACKGROUND_COLORS = {
    'black'    => 40,
    'red'     => 41,
    'green'   => 42,
    'yellow'  => 43,
    'blue'    => 44,
    'magenta' => 45,
    'cyan'    => 46,
    'white'   => 47
  }

  EXTRAS = {
    'clear'     => 0,
    'bold'      => 1,
    'dark'      => 2,
    'italic'      => 3,
    'underline'   => 4,
    'reversed'    => 7
  }
  class ActiveSupport::Logger::SimpleFormatter
    SEVERITY_TO_TAG_MAP     = {'DEBUG'=>'nom', 'INFO'=>'fyi', 'WARN'=>'hmm', 'ERROR'=>'wtf', 'FATAL'=>'omg', 'UNKNOWN'=>'???'}
    SEVERITY_TO_COLOR_MAP   = {'DEBUG'=>'0;37;45', 'INFO'=>'32', 'WARN'=>'33', 'ERROR'=>'31', 'FATAL'=>'31', 'UNKNOWN'=>'37'}
    USE_HUMOROUS_SEVERITIES = true

    def call(severity, time, progname, msg)
      if USE_HUMOROUS_SEVERITIES
        formatted_severity = sprintf("%-3s",SEVERITY_TO_TAG_MAP[severity])
      else
        formatted_severity = sprintf("%-5s",severity)
      end

      formatted_time = time.strftime("%Y-%m-%d %H:%M:%S.") << time.usec.to_s[0..2].rjust(3)
      color = SEVERITY_TO_COLOR_MAP[severity]

      "\033[0;37m#{formatted_time}\033[0m [\033[#{color}m#{formatted_severity}\033[0m] #{msg.strip} (pid:#{$$})\n"
    end
  end
end
