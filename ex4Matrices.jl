#=
ex4Matrices:
- Julia version: 1.6.1
- Author: Angie
- Date: 2021-05-20
- Task: 1. Create two matrices of the same layout and test if addition and subtraction of the matrix works as expected: C = A + B
2. Now compare matrix multiplication either this way A * B and this way A .* B. Whats the difference?!
3. What about matrix division with "/" or "\"?!
4. Create a 3x3 integer matrix A with useful numbers. Now try A+1, A-1, A*2, A/2.
5. Now multiply a 3x4 matrix with a suitable (4)vector.
=#

A = rand(1:9, (3, 3))
B = rand(1:9, (3, 3))

# Task 1
A - B
A .- B # Matrixsubtraction works with both - and .-
A + B
A .+ B # Matrixaddition works with both + and .+

# Task 2
A * B
A .* B # .*/.+/.- are broadcasting functions which multiply elementwise, in add/sub this does not matter, but in mult/div it does.

# Task 3
A / B # Right division operator: multiplication of A by the inverse of B on the right (Julia documentation). This method is the ususal one.
A \ B # Left division operator: multiplication of B by the inverse of A on the left (Julia documentation).

# Task 4
A = rand(1:9, (3, 3))

A .+ 1
A .- 1
A .* 2
2A # Alternative Schreibweise für A*2
A ./ 2
0.5A # Alternative Schreibweise für A/2

# Task 5
A = rand(1:9, (3, 4))
V = rand(1:9, (4))

A * V





