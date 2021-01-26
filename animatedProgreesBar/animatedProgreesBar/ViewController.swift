import UIKit

class ViewController: UIViewController {

    let progressBar = ProgressBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let progressBarColor: UIColor = .purple
        progressBar.totalElements = 5
        progressBar.filledElements = 2
        progressBar.spacing = 4
        progressBar.filledColor = progressBarColor
        progressBar.unfilledColor = progressBarColor.withAlphaComponent(0.3)
        progressBar.cornerRadius = 5
        progressBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(progressBar)
        NSLayoutConstraint.activate([
            progressBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            progressBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            progressBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            progressBar.heightAnchor.constraint(equalToConstant: 10)
        ])
    }
}
