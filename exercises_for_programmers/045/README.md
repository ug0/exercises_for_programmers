# Exercise 45. Word Finder

There will be times when you’ll need to read in one file, modify it,
and then write a modified version of that file to a new file.

Given an input file, read the file and look for all occurrences of the word utilize.
Replace each occurrence with use. Write the modified file to a new file.

## Example Output

Given the input file of

One should never utilize the word "utilize" in writing. Use "use" instead.

The program should generate

One should never use the word "use" in writing. Use "use" instead.

## Constraints

- Prompt for the name of the output file.
- Write the output to a new file.

## Challenges

- Modify the program to track the number of replacements and report that
  to the screen when the program finishes.
- Create a configuration file that maps “bad” words to “good” words and
  use this file instead of a hard-code value.
- Modify the program so it can handle a folder of files instead of a single file.
