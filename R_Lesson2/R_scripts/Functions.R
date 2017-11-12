fahr_to_kelvin  <- function(temp) {
  kelvin <- ((temp -32) * 5/9) + 273.15
  kelvin  
}


print(paste("Boiling point of water",  fahr_to_kelvin(212))) ##Paste separates the argument
print(paste0("Boiling point of water",  fahr_to_kelvin(212)))

kelvin_to_celcius <- function(temp){
  Celcius <- temp - 273.15
  Celcius
}

fahr_to_celcius <- function(temp){
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celcius(temp_k)
  result
}

fahr_to_celcius(212)
print(paste("Boiling point of water in celcius", fahr_to_celcius(212)))

fence_the_name <- function(arg1, arg2){
  result <- paste0(arg2,arg1,arg2)
  result
}

fence_the_name("Sanjay", "---")
