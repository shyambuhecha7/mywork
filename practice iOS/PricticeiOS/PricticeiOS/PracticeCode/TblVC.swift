import UIKit

class TblVC: UIViewController {
   
    @IBOutlet weak var tbl: UITableView!
    var users = [UserData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tbl.dataSource = self
        tbl.dataSource = self
        
        tbl.register(UINib(nibName: "NewCell", bundle: nil), forCellReuseIdentifier: "NewCell")
        getUsersData()
    }
    
    func getUsersData() {
        guard let url = URL(string:"https://reqres.in/api/users?page=2") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { [self] data, response, error in
            
            let jsonDecoder = JSONDecoder()
            if let resultdata = data {
                do {
                    let tasks = try jsonDecoder.decode(UsersList.self, from: resultdata)
                    users = tasks.data
                   // print(tasks.data)
                }
                catch {
                    print("ERROR")
                }
            }
        }
        task.resume()
        
    }
}

extension TblVC: UITableViewDelegate {
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected")
    }
     func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("deselected")
    }
}

extension TblVC: UITableViewDataSource {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewCell") as? NewCell else {
             return UITableViewCell()
         }        
        
         let user = users[indexPath.row]
         cell.firstName.text =  "FirstName : \(user.firstName)"
         cell.lastName.text =  "LastName : \(user.lastName)"
         cell.email.text =  "Email : \(user.email)"
         
       
         
        return cell
    }
}

