threshold <- 174
risk_penalty <- 5
latency_penalty <- 4
weight_bonus <- 6

score_signal <- function(signal) {
  signal$demand * 2 + signal$capacity + signal$weight * weight_bonus -
    signal$latency * latency_penalty - signal$risk * risk_penalty
}

classify_signal <- function(signal) {
  if (score_signal(signal) >= threshold) "accept" else "review"
}
