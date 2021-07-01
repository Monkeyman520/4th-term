# -*- coding: utf-8 -*-
"""
Created on Thu Mar  5 20:34:07 2020

@author: bluesky_hust
"""

# -*- coding: utf-8 -*-
"""
Created on Fri Mar 29 19:07:17 2019

@author: bluesky_hust
"""


# 3rd party
import mmh3


class CountingBloomfilter(set):

    def __init__(self, size, hash_count):
        super(CountingBloomfilter, self).__init__()
        self.byte_attray=bytearray(size)
        self.size = size
        self.hash_count = hash_count

    def add(self, item):
        for ii in range(self.hash_count):
            index = mmh3.hash(item, ii) % self.size
            self.byte_attray[index] += 1

        return self

    def __contains__(self, item):
        out = True
        for ii in range(self.hash_count):
            index = mmh3.hash(item, ii) % self.size
            if self.byte_attray[index] == 0:
                out = False

        return out   
    def isContains(self, item):
        out = True
        for ii in range(self.hash_count):
            index = mmh3.hash(item, ii) % self.size
            if self.byte_attray[index] == 0:
                out = False

        return out
 
    def remove(self, item):
        for ii in range(self.hash_count):
            index = mmh3.hash(item, ii) % self.size
            self.byte_attray[index] -= 1

        return self

def FPTest():
    n1=1000
    n2=1999
    point1 = [i for i in range(0, n1)]
    print(point1)
    point2 = [i for i in range(n1, n2)]
    print('**************************')
    print(point2)
    
    bloom = CountingBloomfilter(5000, 9)
    
    for entry in point1:
        bloom.add(str(entry))
    
    result=[]
    
    for entry in point2:
        if bloom.isContains(str(entry)):
            result.append(entry)
    print('result:',result)
    print('result.len:',len(result))

def Apply1():
    bloom = CountingBloomfilter(500, 3)
    animals = ['dog', 'cat', 'giraffe', 'fly', 'mosquito', 'horse', 'eagle',
               'bird', 'bison', 'boar', 'butterfly', 'ant', 'anaconda', 'bear',
               'chicken', 'dolphin', 'donkey', 'crow', 'crocodile']
    # First insertion of animals into the bloom filter
    for animal in animals:
        bloom.add(animal)

    # Membership existence for already inserted animals
    # There should not be any false negatives
    for animal in animals:
        if animal in bloom:
            print('{} is in bloom filter as expected'.format(animal))
        else:
            print('Something is terribly went wrong for {}'.format(animal))
            print('FALSE NEGATIVE!')

    # Membership existence for not inserted animals
    # There could be false positives
    other_animals = ['badger', 'cow', 'pig', 'sheep', 'bee', 'wolf', 'fox',
                     'whale', 'shark', 'fish', 'turkey', 'duck', 'dove',
                     'deer', 'elephant', 'frog', 'falcon', 'goat', 'gorilla',
                     'hawk' ]
    for other_animal in other_animals:
        if other_animal in bloom:
            print('{} is not in the bloom, but a false positive'.format(other_animal))
        else:
            print('{} is not in the bloom filter as expected'.format(other_animal))    

def Delete():
    bloom = CountingBloomfilter(500, 3)
    animals = ['dog', 'cat', 'giraffe', 'fly']
    # First insertion of animals into the bloom filter
    for animal in animals:
        bloom.add(animal)
    
    for animal in animals:
        if animal in bloom:
            print('{} is in bloom filter as expected'.format(animal))
        else:
            print('Something is terribly went wrong for {}'.format(animal))
            print('FALSE NEGATIVE!')
    
    print('start removing**************')
    bloom.remove(animals[0])
    for animal in animals:
        if animal in bloom:
            print('{} is in bloom filter as expected'.format(animal))
        else:
            print('Something is terribly went wrong for {}'.format(animal))
            print('FALSE NEGATIVE!')

def main():
    #FPTest()
    Delete()
    #Apply1()

if __name__ == '__main__':
    main()