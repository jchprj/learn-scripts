// No multiple line, only match first line
/.*/

// All single digit
/\d*/g

// ^. means any character that is not a '.'
/[^.]*/g

// Start with 'a', with 20 characters afterward
// Thursday, December 28, 2017 11:14
/a.{20}/gm

// String start ^ and end $
/^a/gm
/Z$/gm
/^a.*Z$/gm