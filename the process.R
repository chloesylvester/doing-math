#create matrices A and B
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

#transpose A and B
t(A)
t(B)

#create two vectors a and b
a <- 1:10
b <- 11:20

#multiply matrices by vectors
A %*% a
B %*% b

#re-assign the vectors a and b to match the number of columns of corresponding matrices
a <- 1:ncol(A)
b <- 1:ncol(B)

#multiply the matrix by a matrix
A %*% t(A)
B %*% t(B)

#create a new matrix for inversion
S <- matrix(2:5, nrow = 2)

#compute determinant of S
det(S)

#find the inverse of S (if the determinant is non-zero)
if (det(S) !=0) {
  S_inv <- solve(S)
  print(S_inv)
} else {
  print("Matrix S is singular and cannot be inverted.")
}