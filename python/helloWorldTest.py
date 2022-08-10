import pytest

import helloWorld

def test_helloWorld_output():
    result = helloWorld.hello_world()
    print(f"result : {result}\n")
    assert result

# class SimplisticTest(unittest.TestCase):

#     def test(self):
#     	helloWorld.hello_world()
#         self.assertTrue(True)

# if __name__ == '__main__':
# 	unittest.main()