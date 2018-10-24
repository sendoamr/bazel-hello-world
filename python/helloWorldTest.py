import unittest

import helloWorld

class SimplisticTest(unittest.TestCase):

    def test(self):
    	helloWorld.hello_world()
        self.assertTrue(True)

if __name__ == '__main__':
	unittest.main()