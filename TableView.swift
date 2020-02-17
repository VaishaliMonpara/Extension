 extension UITableView {
    
    func setEmptyMessage(_ message: String, color: UIColor) {
        //https://stackoverflow.com/questions/27919620/how-to-load-gif-image-in-swift
       
        
       let messageLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
       messageLabel.text = message
       messageLabel.numberOfLines = 0;
       if color != ""
       {
            messageLabel.textColor = UIColor.init(hex: color!)
       }else
       {
       messageLabel.textColor = UtilColor().getGradienAppStartColor()
       }
       messageLabel.textAlignment = NSTextAlignment.center
       messageLabel.sizeToFit()
       self.backgroundView = messageLabel;
  }
  
  func restore() {
        self.backgroundView = nil
  }
}
