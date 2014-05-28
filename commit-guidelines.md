Commit Guidelines
=================

## On Commit Messages

Commit message format:

 *  the first line should be a short description, no more than 72 characters and does not end with a period(.)
 *  the next line should be empty space
 *  following this is an optional longer description, this should be written in regular paragraphs with full sentence structure
 *  finally if this patch fixes an open bug, there should be a link to the bug report, in a paragraph by itself

### DO

 *  Write the summary line and description of what you have done in the imperative mode.
 *  Describe, at a high level, what was done to affect change.
 *  Describe what side effects does this change have.

### DON'T

 *  Don't end the summary line with a period.
 *  Don't describe the code, describe the intent and the approach.
 *  Never use the `-m <msg>` / `--message=<msg>` flag to `git commit`.
 
**By taking great care in commit messages, as you do in your code, you will help to increase overall quality.**

## References

 *  [Writing good commit messages](https://github.com/erlang/otp/wiki/Writing-good-commit-messages)
 *  [On commit messages](http://who-t.blogspot.com/2009/12/on-commit-messages.html)
 *  [a guide to writing git commit messages](http://blogs.gnome.org/danni/2011/10/25/a-guide-to-writing-git-commit-messages/)
 *  [Proper Git Commit Messages and an Elegant Git History ](http://ablogaboutcode.com/2011/03/23/proper-git-commit-messages-and-an-elegant-git-history/)
 *  [5 Useful Tips For A Better Commit Message](http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message)
