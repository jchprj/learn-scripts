// https://stackoverflow.com/questions/3518504/regular-expression-for-matching-latitude-longitude-coordinates
// var re = regexp.MustCompile(`^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)$`)
// func validateLatLong(latitude, longitude string) bool {
//     return re.MatchString(latitude + "," + longitude)
// }

// Sunday, November 4, 2018 12:56

/^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)$/gm