using System;
using System.IO;

namespace Spectre {
	static class Logging {

		public static readonly StringView logFileName = "spectre.log";

		public enum LogLevel {
			case Debug = 0;
			case Info = 1;
			case Warning = 2;
			case Error = 3;
		}

		public static void LogNow(LogLevel level, StringView format, params Object[] args) {
			String str = scope String()..AppendF(format, args);
			LogNow(level, str);
		}

		public static void LogNow(LogLevel level, Object data) {
			String str = scope String();
			data.ToString(str);
			LogNow(level, str);
		}

		private static void LogNow(LogLevel level, String msg) {
			//TODO: filter based on loglevel
			String finalMsg = scope String()..AppendF("[{}] {}", level, msg);
			Console.WriteLine(finalMsg);
			// append to logfile
			File.WriteAllText(logFileName, finalMsg, true);
		}

		//TODO: use pub/sub for this?

	}
}
