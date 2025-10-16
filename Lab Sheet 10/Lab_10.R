setwd("C:/Users/USER/Desktop/Lab_10")

snacks <- c(35, 25, 20, 20)
names (snacks) <- c("A", "B", "c", "D")

print("Observed frequencies for each snack type:")
print(snacks)

test_result <- chisq.test(snacks, p = rep(1/4, 4))

print("Chi-Square Test Result:")
print(test_result)

if (test_result$p.value > 0.05) {
  print("Conclusion: Fail to reject HO. Snack types are chosen equally likely.")
 } else{
    print("Conclusion: Reject HO. Snack types are not chosen equally likely.")
}