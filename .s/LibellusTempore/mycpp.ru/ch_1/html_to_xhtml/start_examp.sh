#!/bin/bash

r_dir=${REPO_PATH}/NPerl/.s/LibellusTempore/mycpp.ru/ch_1/html_to_xhtml

cd ${REPO_PATH}/NPerl/.s/LibellusTempore/mycpp.ru/ch_1/html_to_xhtml || plt_exit

cp _file_1.html file_1.html

echo -e "${HLIGHT}--- perl ${r_dir}/html_to_xhtml.pl ${r_dir}/file_1.html ---${NORMAL}" #start files
perl "${r_dir}"/html_to_xhtml.pl "${r_dir}"/file_1.html
echo

echo -e "${HLIGHT}--- perl ${r_dir}/html_to_xhtml.pl ${r_dir}/file_1.htmlx ---${NORMAL}" #start files
perl "${r_dir}"/html_to_xhtml.pl "${r_dir}"/file_1.htmlx
echo

echo -e "${HLIGHT}--- perl html_to_xhtml.pl file_1.html ---${NORMAL}" #start files
perl html_to_xhtml.pl file_1.htmlx
echo

echo -e "${HLIGHT}--- perl ${r_dir}/html_to_xhtml.pl  ---${NORMAL}" #start files
perl "${r_dir}"/html_to_xhtml.pl 
echo

diff _file_1.html file_1.html

cp _file_1.html file_1.html

echo -e "${HLIGHT}--- perl html_to_xhtml.pl ${r_dir}/file_1.html ---${NORMAL}" #start files
perl html_to_xhtml.pl "${r_dir}"/file_1.html
echo

diff _file_1.html file_1.html