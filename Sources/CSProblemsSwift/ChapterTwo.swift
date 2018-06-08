func binarySearch<T: Comparable>(_ arr: [T], item: T) -> Int? {
    var low = 0
    var high = arr.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        
        if item < arr[mid] {
            high = mid - 1
        } else if item == arr[mid] {
            return mid
        } else {
            low = mid + 1
        }
    }
    return nil
}
