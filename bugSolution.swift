let array = [1, 2, 3]
let index = 4
if index < array.count {
    print(array[index])
} else {
    print("Index out of bounds")
}

//Alternative using optional binding:
let safeValue = array[safe: index]
print(safeValue ?? "Index out of bounds")

//Extension for safe array access
public extension Array where Element: Any {
    subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
} 