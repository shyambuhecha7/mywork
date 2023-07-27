import UIKit

struct data {
    let settingImg: String
    let settingName: String
    let btnStatusImg: String
}

class ViewController: UIViewController {
    let sectionData = [[data(settingImg: Images.img, settingName: SettingsTitles.title1,btnStatusImg: Images.on),data(settingImg: Images.secImg, settingName: SettingsTitles.title2,btnStatusImg: Images.on)],[data(settingImg: Images.menu, settingName:SettingsTitles.title3,btnStatusImg: Images.off),data(settingImg: Images.ring, settingName: SettingsTitles.title4,btnStatusImg: Images.on)]]

    @IBOutlet weak var tblSetting: UITableView!
    @IBOutlet weak var btnCancle: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var btnHelp: UIButton!
    @IBOutlet var vc: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tblSetting.delegate = self
        tblSetting.dataSource = self
        tblSetting.register(UINib(nibName: NibName.tableViewCell, bundle: nil), forCellReuseIdentifier: NibName.tableViewCell)
        btnCancle.layer.borderWidth = 1
        btnCancle.layer.borderColor = CGColor.init(red: CGFloat(0), green:  CGFloat(0), blue:  CGFloat(0), alpha:  1)
        btnCancle.layer.cornerRadius = 8
        self.navigationItem.title = Constant.setting
        bottomView.layer.cornerRadius = 24
        bottomView.isHidden = true
        let backButton = UIBarButtonItem(title: "", style: .plain, target: self, action: nil    )
        backButton.setBackgroundImage(UIImage(named: Images.icon), for: .normal, barMetrics: .default) 
        self.navigationItem.setLeftBarButton(backButton, animated: false)
    }

    var num = true
    @IBAction func clickOnButton(_ sender: UIButton) {
        if num {
            sender.setImage(UIImage(named: Images.on), for: .normal)
            bottomView.isHidden = false
            num.toggle()
        }else {
            sender.setImage(UIImage(named: Images.off), for: .normal)
            bottomView.isHidden = true
            num.toggle()
        }
    }
}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tblSetting.dequeueReusableCell(withIdentifier: NibName.tableViewCell, for: indexPath) as! TableViewCell
        let oneCell = sectionData[indexPath.section][indexPath.row]
        cell.settingImg.image = UIImage(named: oneCell.settingImg)
        cell.lblSettingTitle.text = oneCell.settingName
        cell.btn.tintColor = UIColor.white
        cell.btn.setImage(UIImage(named: oneCell.btnStatusImg), for: .normal)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 40))
            headerView.layer.cornerRadius = 8
            let label = UILabel()
            label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
         if section == 0 {
            label.text = Text.text_privacy
        }else {
            label.text = Text.text_other
        }
            label.font = .systemFont(ofSize: 16)
            label.textColor = .black
            headerView.backgroundColor = UIColor(named: Images.lightblack)
            headerView.addSubview(label)
            return headerView
        }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 40
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("You deselected cell #\(indexPath.row)!")
    }
}
