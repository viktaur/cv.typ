#import "cv.typ": *

#let cvdata = yaml("example.yml")

#let uservars = (
    headingfont: "Helvetica Neue",
    bodyfont: "Helvetica Neue",
    fontsize: 10pt, // 10pt, 11pt, 12pt
    linespacing: 6pt,
    showAddress: false, // true/false show address in contact info
    showNumber: false,  // true/false show phone number in contact info
    headingsmallcaps: false
)

// setrules and showrules can be overridden by re-declaring it here
// #let setrules(doc) = {
//      // add custom document style rules here
//
//      doc
// }

#let customrules(doc) = {
    // add custom document style rules here
    set page(
        paper: "a4", // a4, us-letter
        // numbering: "1",
        number-align: center, // left, center, right
        margin: 1.25cm, // 1.25cm, 1.87cm, 2.5cm
    )

    doc
}

#let cvinit(doc) = {
    doc = setrules(uservars, doc)
    doc = showrules(uservars, doc)
    doc = customrules(doc)

    doc
}

// each section body can be overridden by re-declaring it here
// #let cveducation = []

// ========================================================================== //

#show: doc => cvinit(doc)

#cvheading(cvdata, uservars)
#cvsummary(cvdata)
#cvwork(cvdata)
#cveducation(cvdata)
// #cvaffiliations(cvdata)
#cvprojects(cvdata)
// #cvawards(cvdata)
// #cvcertificates(cvdata)
// #cvpublications(cvdata)
#cvskills(cvdata)
#cvreferences(cvdata)
// #endnote()