import Foundation

final class MealApi {
    let host = "https://themealdb.com"
    
    func getRandomMeal() -> URLRequest {
        let path = "/api/json/v1/1/random.php"
        let url = "\(host)\(path)"
        
        var request = URLRequest(url: URL(string: url)!)
        
        request.httpMethod = HTTPMethods.get
        
        return request
    }
    
    func getAllCategories() -> URLRequest {
        let path = "/api/json/v1/1/categories.php"
        let url = "\(host)\(path)"
        
        var request = URLRequest(url: URL(string: url)!)
        
        request.httpMethod = HTTPMethods.get
        
        return request
    }
    
    func getAllAreas() -> URLRequest {
        let path = "/api/json/v1/1/list.php?a=list"
        let url = "\(host)\(path)"
        
        var request = URLRequest(url: URL(string: url)!)
        
        request.httpMethod = HTTPMethods.get
        
        return request
    }
    
    func getAllIngredients() -> URLRequest {
        let path = "/api/json/v1/1/list.php?i=list"
        let url = "\(host)\(path)"
        
        var request = URLRequest(url: URL(string: url)!)
        
        request.httpMethod = HTTPMethods.get
        
        return request
    }
    
    func getByCategory(category: String) -> URLRequest {
        let path = "/api/json/v1/1/filter.php?c=\(category)"
        let url = "\(host)\(path)"
        
        var request = URLRequest(url: URL(string: url)!)
        
        request.httpMethod = HTTPMethods.get
        
        return request
    }
    
    func getByArea(area: String) -> URLRequest {
        let path = "/api/json/v1/1/filter.php?a=\(area)"
        let url = "\(host)\(path)"
        
        var request = URLRequest(url: URL(string: url)!)
        
        request.httpMethod = HTTPMethods.get
        
        return request
    }
    
    func getByIngredient(ingredient: String) -> URLRequest {
        let path = "/api/json/v1/1/filter.php?i=\(ingredient)"
        let url = "\(host)\(path)"
        
        var request = URLRequest(url: URL(string: url)!)
        
        request.httpMethod = HTTPMethods.get
        
        return request
    }
    
    func getById(id: String) -> URLRequest {
        let path = "/api/json/v1/1/lookup.php?i=\(id)"
        let url = "\(host)\(path)"
        
        var request = URLRequest(url: URL(string: url)!)
        
        request.httpMethod = HTTPMethods.get
        
        return request
    }
    
    func getByName(searchText: String) -> URLRequest {
        let path = "/api/json/v1/1/search.php?s=\(searchText)"
        let url = "\(host)\(path)"
        
        var request = URLRequest(url: URL(string: url)!)
        
        request.httpMethod = HTTPMethods.get
        
        return request
    }
}
