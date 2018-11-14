require "numo/narray"
science = Numo::DFloat[65,80,67,35,58,60,72,75,68,92,36,50,2,58.5,46,42,78,62,84,70]
english = Numo::DFloat[44,87,100,63,52,60,58,73,55,86,29,56,89,23,65,84,64,27,86,84]

printf("理科の平均点:%f\n" , science.ave)
printf("英語の平均点:%f\n" , english.ave)

printf("理科の標準偏差:%f\n" , science.stddev)
printf("英語の標準偏差:%f\n" , english.stddev)


