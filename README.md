# Technical Assessment - Ruby on Rails

## Summary

The purpose of this short assessment is to gain some initial insight in to your
coding style, practices, thought processes, and attention to detail. It is
_not_ intended to be a strictly graded test with specific scores determining
a "pass" or "fail". Just focus on solving the problems outlined how you would
at your current or any other team.

Note that some of the user stories are ambiguous. There are many possible and/or
acceptable solutions to these problems. Use your best judgement to determine
what an appropriate solution is. It would be helpful to also demonstrate or 
explain how you came to your conclusions. You may be asked to explain your
solutions if it's not immediately clear what your reasoning was. Additionally,
you may be asked to pair with a Contently engineer to further expand on your
work.

## Instructions

- [Create either a public or private duplicate of this repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/duplicating-a-repository).
- Time-box your efforts to 2 to 4 hours.
- Setup application
    - [ ] `$ ruby -v` should return 2.7.1, else install Ruby 2.7.1
    - [ ] `$ bundle install`
    - [ ] `$ bundle exec rake db:setup`
    - [ ] `$ bundle exec rails s`
- Solve for several or more of the following problems:
    - [ ] A user should not be able to complete a task when creating it.
    - [ ] A user can filter their view by complete or incomplete tasks.
    - [ ] A user's default view is filtered to show only incomplete tasks.
    - [ ] A user should be able to keep multiple lists.
    - [ ] A user should have access to only their tasks. (may require devise or 
        a creative, lightweight auth system)
    - [ ] A user viewing a task should see a history of all its changes. 
        (task audit trail)
    - [ ] A user should be able to see a history of all completed tasks and 
        associated actions. (app audit trail)
- Considerations for the work you submitted:
    - [ ] Code actually works.
    - [ ] Application is bootable and usable.
    - [ ] Unit, integration, feature, and or end-to-end testing considered.
    - [ ] Code is of sufficient quality and tidiness.
    - [ ] Includes documentation on how to utilize new features / updates.
- Commit your work with appropriate and informative git commit messages.
- Push your work up to your duplicated git repository (on Github).
- If your repository is private, give the following users access:
    - [ ] [@briandangerflynn](https://github.com/briandangerflynn)
    - [ ] [@jamesconant](https://github.com/jamesconant/)
    - [ ] [@nethanelkohen](https://github.com/nethanelkohen)
- Create a pull request in your repository:
    - [ ] Must target your master branch from your feature branch.
    - [ ] Must list the problems (from above) that you are addressing in your 
        PR. 
- Email Contently staff to let them know your Pull Request is ready for review:
    - [ ] Email [engineers@contently.com](engineers@contently.com)
- Contently staff will review your code, possibly asking questions or providing
    suggestions. We will attempt to review your assessment in a timely manner
    and simply ask that you attempt to respond in a timely manner as well.
- Once the review is complete, Contently staff will determine the next steps to
    be taken.
    
## Thanks!

Thank you for taking the time to complete this assessment. As engineers,
ourselves, we are sensitive to the time and energy it takes to go through this
process once, much less at numerous companies. Your interest is greatly
appreciated and we are excited to see if Contently is the next journey in your
career.