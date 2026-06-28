
# project roadmap

## 1 - preliminaries

This document is a
[WIP](https://en.wikipedia.org/wiki/Work_in_process),
describing several phases of the Reveal Dig project.
Development progress and stakeholder input will help it evolve.

## 2 - deployment technology

Docker container(s) will be used to run code in production.
Target OS will be ubuntu linux or similar.
Primary language will be Python,
possibly augmented by Rust if there are speed concerns.
Secret credentials will not appear in the repo.

Numerous city staff might possibly be Collaborators in the github
repo, as desired. Submission of Issues and Pull Requests is welcome
from all.

## 3 - initial scope -- [PoC](https://en.wikipedia.org/wiki/Proof_of_concept)

Please refer to the project
[background](01-background.md),
which describes 811 and how dig notifications
are only visible to a small subset of people
who interact with Menlo Park properties.

We wish to walk before we run.
We will devote some time to demonstrating a
[proof of concept](03-proof-of-concept.md):

1. Identify relevant stakeholders who wish to participate in the process.
2. Obtain from
   [PW](https://www.menlopark.gov/Government/Departments/Public-Works)
   a copy of the 811 feed they already receive, in the form they find
   most convenient, perhaps as a forwarded email attachment.
3. Parse out the two or more dig sites in the feed document.
4. Depict excavation bounding boxes in terms of street address and (lat, lng).
5. Seek stakeholder feedback.

## 4 - graphical rendering

1. Depict white line markings on maps that show roadways and house numbers.
2. Seek stakeholder feedback.

## 5 - bigger feed

1. Ingest several weeks worth of dig notices, at least 100 excavation sites.
2. Seek stakeholder feedback.

## 6 - automated feed

1. No developer involvement. Either city staff will click to ingest
   new dig notices, or an automated process does it and subsequently
   we supervise the results.
2. Seek stakeholder feedback.

## 7 - portal integration (pull)

1. Explore what would be needed to present 811 results side-by-side
   with permits, or by offering a clickable link.
2. Propose some low risk implementation or mockup.
3. Seek stakeholder feedback.
4. Deploy such a solution in production.
5. Seek stakeholder feedback.

## 8 - resident notifications (push)

Possibly this is a bridge Too Far.
We may wish to stop at this point.

The city already has procedures for using USPS to notify residents of
construction events that may occur within N meters of their home.
The city already sends emails and SMS messages
to residents under limited circumstances.
In some cases the city already knows the (lat, lng)
or street address of the resident.

Explore with stakeholders the ways we might expose an existing
deployed technology to residents who are not yet aware  either of this
service nor of proposed excavations of sites they care about.

Residents can already examine nearby construction activity through the
Permit Portal. A low risk way to expose new functionality would be by
adding a clickable link to subscribe to updates (such as 811 updates)
via SMS or email.
