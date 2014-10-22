# Data Structures

A _data structure_ is a particular pattern for organizing information in order to make interacting with that information in the ways we want less expensive.  If this sounds abstract, let's consider some examples.

## The Rules

The only rule is that you can't use any built-in Ruby data structures.  That means no `Array`, no `Hash`, and no `Set`.  You can use built-in Ruby primitives, though, like `Fixnum`, `String`, `nil`, `true`, and `false`.

## Examples

1.  Phone books are organized alphabetically by last name, which makes it easy to find the phone number if we know someone's last name.

    What if they were organized alphabetically by first name?  Or numerically by phone number?  Or by street name and number?  These are all _valid_ ways of organizing a phone book, but they all make it harder to interact with the information in the way we care about.
1.  How do you organize your clothes?  Most people fall into two buckets:

    - They fold their clothes as soon as they do laundry and put them away neatly
    - They toss their clothes into a pile and deal with how to find what to wear each morning.

    The first method of organizing requires more up-front work, but makes it much easier to find our clothes in the morning.  The second method of organizing requires almost _no_ up-front work, but makes it more challenging to find our clothes in the morning.

    This is a classic trade-off between write performance (putting our clean clothes away) and read performance (finding our clothes in the morning).  In the first case, "writing" is expensive but "reading" is cheap, and in the second case, "reading" is expensive but "writing" is cheap.

    _How_ we organize
1.  Imagine we have a collection of financial transactions, e.g., stock trades.  How might we want to interact with this list?

    - Adding a new transaction to the list
    - Removing an existing transaction from the list
    - Finding a specific transaction in the list
    - Finding all transactions in a certain price range, e.g., all transactions between $15USD and $20USD.
    - Finding all transactions that occurred within a certain range of time

    Depending on our situation, we might care about some of these more than others.
