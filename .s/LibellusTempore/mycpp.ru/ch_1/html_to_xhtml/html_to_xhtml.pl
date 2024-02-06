#!/usr/bin/perl -w 
## !/usr/bin/perl 

 # Проверка переданного имени файла HTML
 die "Не задан файл HTML!" unless @ARGV;

 # Открытие, чтение и закрытие файла HTML

 print $ARGV[0];
 print;
 open(F1,  $ARGV[0]) or die "Ошибка открытия файла:\n $!";
 @file = <F1>;
 close(F1) or die $!;

 # Создание пустого файла HTML с тем же именем
 open(F1,">$ARGV[0]") or die "Ошибка открытия файла: $!";

 # Цикл по всем строкам исходного файла и замена тегов
 foreach $m (@file) {
   print F1 replace($m);   # Запись строки в новый файл
 }

 # Закрытие нового файла HTML 
 close(F1) or die $!;

print "\ndone!";

 # Определение подпрограммы замены
 sub replace {
   my $string = $_[0];
   $string =~ s/<(.+?)>/<\L$1\U>/g;
   return $string;
 }

=head1 NAME

My Script name

=head1 DESCRIPTION

Description of My Script

=cut