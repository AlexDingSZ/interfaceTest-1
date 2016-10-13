[loggers]  
keys=root,main
  
[handlers]  
keys=consoleHandler,fileHandler  
  
[formatters]  
keys=fmt  
  
[logger_root]  
level=DEBUG  
handlers=consoleHandler  
  
[logger_main]  
level=DEBUG  
qualname=main  
handlers=fileHandler 

  
[handler_consoleHandler]  
class=StreamHandler  
level=DEBUG  
formatter=fmt  
args=(sys.stdout,)  
  
[handler_fileHandler]  
class=logging.handlers.RotatingFileHandler  
level=DEBUG  
formatter=fmt
args=('D:/wy_auto/_Output/log/wy_autotest.log','a',20000000,5,)  
  
  
[formatter_fmt]  
format=%(asctime)s[%(levelname)s] %(message)s