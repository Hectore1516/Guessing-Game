function guessloop {
  while [[ $response -ne $correct_files ]]
  do 
    if [[ $response -lt $correct_files ]]
    then
      echo "There's more files than your guess. Enter a number again:"
      read response
    elif [[ $response -gt correct_files ]]
    then
      echo "There's less files than your guess. Enter a number again:"
      read response
    fi
  done
  echo "You got the correct answer!"
}

echo "Plese enter how many files are in the current directory:"
read response
correct_files=$(ls | wc -l)
guessloop response correct_files