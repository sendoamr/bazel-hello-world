import unittest

import helloWorld

class SimplisticTest(unittest.TestCase):
    def test(self):
        print(f"Triggering Unit Test...")
        helloWorld.hello_world()
        self.assertTrue(True)

if __name__ == '__main__':
	unittest.main()