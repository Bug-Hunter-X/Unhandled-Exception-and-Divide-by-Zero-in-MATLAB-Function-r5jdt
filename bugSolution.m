function result = myFunction(input)
  % Check for invalid inputs
  if input < 0
    error('Input must be non-negative');
  elseif input == 5
    error('Input cannot be 5 to prevent division by zero');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % Check for potential divide-by-zero before calculation
  if x == 5
    error('Cannot divide by zero');
  end
  output = x / (x - 5);
end