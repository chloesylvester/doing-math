#define matrix A
A <- matrix(1:100, nrow = 10) #10x10 matrix with values of 1 to 100

#display matrix A
print("Matrix A:")
print(A)

#calculate the determinant of matrix A
det_A <- determinant(A)

#display determinant of A
print("Determinant of A:")
print(det_A)

#check to see if determinant A can be invertible — this means that the determinant can not have a value of 0
if(det_A !=0) {#compute the inverse of matrix A
  inv_A <- solve(A)
  print("Inverse of A:")
  print(inv_A)
} else {
    print("Matrix A is singular. Not invertible.")
}

#recheck since det_A was a small number
if (isTRUE(all.equal(det_A, 0)) == FALSE) {#compute the inverse of matrix A
  inv_A <- solve(A)
  print("Inverse of A:")
  print(inv_A)
} else {
  print("Matrix A is singular. Not invertible.")
}

#define matrix B
B <- matrix(1:1000, nrow = 10) #10x100 matrix with values of 1 to 1000

#display matrix B
print("Matrix B:")
print(B)

#matrix B is not a perfect square. determinant and the inverse are not clearly defined
print("Matrix B is not a square. The determinant and inverse do not exist.")

#the function to calculate the inverse if these matrices were invertible
find_inverse <- function(mat) {
  det_mat <- det(mat)
  if (det_mat !=0){
    return(solve(mat))
  } else {
    return("Matrix is singular and not invertible.")
  }
}

#compute the inverse of matrix A
inverse_A <- find_inverse(A)
print("Computed Inverse of A:")
print(inverse_A)
