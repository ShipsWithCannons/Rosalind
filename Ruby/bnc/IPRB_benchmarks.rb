def probability_dominant_1(k, m, n)
	((k * k - k) + 2 * (k * m) + 2 * (k * n) + (0.75 * (m * m - m)) + 2 * (0.5 * m * n))/((k + m + n)*(k + m + n -1))
end

def probability_dominant_2(k, m, n)
	(k * k + k * (2 * m + 2* n - 1) + m * (0.75 * m + n - 0.75)) / ((k + m + n - 1) * (k + m + n))
end

def probability_dominant_3(k, m, n)
	(k * k + k * m + k + 0.25 * m * m + 0.75 * m)/(k + m + n) - (k * k + k * m - k + 0.25 * m * m - 0.25 * m) / (k + m + n - 1)
end

require 'benchmark'

n = 500000
Benchmark.bm(6) do |x|
  x.report("first:")   { for i in 1..n; probability_dominant_1(n, n, n); end }
  x.report("second:")   { for i in 1..n; probability_dominant_2(n, n, n); end }
  x.report("third:")   { for i in 1..n; probability_dominant_3(n, n, n); end }
end