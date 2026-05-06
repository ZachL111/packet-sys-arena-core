source("R/domain_review.R")

item <- list(signal=70, slack=44, drag=20, confidence=79)
stopifnot(domain_review_score(item) == 203)
stopifnot(domain_review_lane(item) == "ship")
