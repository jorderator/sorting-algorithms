# Sorting algorithms

This repository will contain any sorting algorithms I develop, at least in lua for now. If I 
need to implement more in other languages, I may include them here as well for simplicity.

## Usage

 Currently, they are implemented so that each algorithm has a `sort()` function, as well as 
 the functions from the 'sorting-tools' library. If multiple algorithms are needed in one
 project, I would recommend importing them to a value, for instance;

```lua
shell_sort = require("shell-sort")
merge_sort = require("merge-sort")

-- it doesn't matter whether shell or merge was used here, and alternatively sorting-tools
--  could be included in this script directly, so that simple 'read_data()' could be used
data = shell_sort.read_data(path)

table_1 = shell_sort.sort(data_1)
table_2 = merge_sort.sort(data_2)
```

 As it stands, the algorithms need and return lists starting at 0. This is only because I
 haven't been able to alter them to start at 1 yet. I am working on this, so they better
 match standard lua practices.

## Todo

 * Finish merge sort
 * Convert algorithms to work with lists starting from 1, instead of 0
 * Properly comment sorting algorithms, for my own understanding, and for better documentation
 * Implement other algorithms, as needed
