rm -r .dart_tool

cd templates

for i in *
do
  cd $i
  rm -r .dart_tool
done

cd ../../
