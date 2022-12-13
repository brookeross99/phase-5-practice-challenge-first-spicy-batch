# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy
# def is_spicy_batch(batch):

# 1) Problem: need to go through all of the batches and see which is the first spicy-ish (so true) output that shows up in each batch.
# 2) test case-- 

# def test(n)
#   puts "test case #1"
#   first_spicy_batch(n)
# end

# 3) write first_spicy_batch to invoke is_spicy_batch and return the first boolean that returns true.

# def first_spicy_batch(n)
#   # puts "in first spicy batch"
#   return
#   is_spicy_batch(n).find(true).first
# end

# first_spicy_batch(5)

def first_spicy_batch(n)
  # assign left to be the first batch and right to be the last (n)th batch
  left = 0
  right = n

  # our batches are sorted, so all the spicy batches will be at the end of the list
  # and all non-spicy batches will be at the beginning.
  # loop through values in the list the value of left is no longer less than the value of right
  while left < right
    # start our search in the middle of the list
    mid = left + (right - left) / 2

    # run our helper method and check if the middle batch is spicy
    if is_spicy_batch(mid)
      # if the middle batch is spicy, we reassign right to be the value
      # of mid (since we know all batches to the right of mid are spicy)
      right = mid
    else
      # otherwise, we assign left to be the value of mid + 1, because
      # we already know that mid is not spicy
      left = mid + 1
    end
  end

  # return left, which will be the first spicy batch!
  left
end

# first_spicy_batch(5)