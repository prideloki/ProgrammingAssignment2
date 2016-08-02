library('RUnit')

source('cachematrix.R')

test.suite <- defineTestSuite("example",
                              dirs = file.path("tests"),
                              testFileRegexp = 'test_cache.R')

test.result <- runTestSuite(test.suite)

printTextProtocol(test.result)