# https://stackoverflow.com/questions/13733552/logger-configuration-to-log-to-file-and-print-to-stdout

import logging, sys
logger = logging.getLogger()
logger.setLevel(logging.INFO)

logger.addHandler(logging.StreamHandler())

logger.addHandler(logging.StreamHandler(sys.stdout))

logFormatter = logging.Formatter("%(asctime)s [%(threadName)-12.12s] [%(levelname)-5.5s]  %(message)s")

fileHandler = logging.FileHandler("temp_test.log")
fileHandler.setFormatter(logFormatter)
logger.addHandler(fileHandler)

consoleHandler = logging.StreamHandler()
consoleHandler.setFormatter(logFormatter)
logger.addHandler(consoleHandler)

logger.info("Hello World")

# The whole setup can therefore be done with a single call like this:
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler("temp_test.log"),
        logging.StreamHandler()
    ]
)
logging.info("Hello World")