require "numo/narray"
science = Numo::DFloat[65,80,67,35,58,60,72,75,68,92,36,50,2,58.5,46,42,78,62,84,70]
english = Numo::DFloat[44,87,100,63,52,60,58,73,55,86,29,56,89,23,65,84,64,27,86,84]

s = science.sum / 20
e = english.sum / 20

printf("理科の合計点:%f\n" , science.sum)
printf("英語の合計点:%f\n" , english.sum)

printf("理科の標準偏差:%f\n" , science.stddev)
printf("英語の標準偏差:%f\n" , english.stddev)

printf("理科の平均点:%d\n" , s)
printf("英語の平均点:%d\n" , e)

(0..19).each{|i|
    printf("%d人目の理科の偏差値:%f , 英語の偏差値:%f\n" , i+1 ,50 + (science[i] - s)/science.stddev*10 , 50 + (english[i] - e)/english.stddev*10) 
}

printf("    理科　  　英語\n")
20.times{|i|
    printf("%d位:%3f  %3f\n" , i+1 , science.sort.reverse[i] , english.sort.reverse[i])
}
