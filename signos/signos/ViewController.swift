//
//  ViewController.swift
//  signos
//
//  Created by Hicharles Rocha on 01/05/2018.
//  Copyright © 2018 Hicharles. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = []
    var significadoSignos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
       
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //configurando os significados
        significadoSignos.append("Áries ou Carneiro é o primeiro signo astrológico do zodíaco, situado entre Peixes e Touro e associado à constelação de Aries. Seu símbolo é um carneiro. Forma com Leão e Sagitário a triplicidade dos signos do Fogo.")
        significadoSignos.append("Touro ou Tauro é o segundo signo astrológico do zodíaco, situado entre Áries e Gêmeos e associado à constelação de Taurus. Seu símbolo é um touro. Forma com Virgem e Capricórnio a triplicidade dos signos da Terra.")
        significadoSignos.append("Gêmeos ou Gémeos, ou ainda Gemini, é o terceiro signo astrológico do zodíaco, situado entre Touro e Câncer/Caranguejo e associado à constelação de Gemini. Seu símbolo são os irmãos gêmeos/gémeos.")
        significadoSignos.append("Câncer ou Caranguejo é o quarto signo astrológico do zodíaco, situado entre Gêmeos/Gémeos e Leão e associado à constelação de Cancer. Seu símbolo um caranguejo. Forma com Escorpião e Peixes a triplicidade dos signos da Água.")
        significadoSignos.append("Leão ou Leo é o quinto signo astrológico do zodíaco, situado entre Câncer/Caranguejo e Virgem e associado à constelação de Leo. Seu símbolo é um leão. Forma com Áries/Carneiro e Sagitário a triplicidade dos signos do Fogo.")
        significadoSignos.append("Virgem ou Virgo é o sexto signo astrológico do zodíaco, situado entre Leão e Libra e associado à constelação de Virgo. Seu símbolo é uma virgem. Forma com Touro e Capricórnio a triplicidade dos signos da Terra.")
        significadoSignos.append("Libra ou Balança é o sétimo signo astrológico do zodíaco, situado entre Virgem e Escorpião e associado à constelação de Libra. Seu símbolo é uma balança. Forma com Gêmeos/Gémeos e Aquário a triplicidade dos signos do Ar.")
        significadoSignos.append("Escorpião é o oitavo signo astrológico do zodíaco, situado entre Libra e Sagitário e associado à constelação de Scorpius. Seu símbolo é o escorpião. Forma com Câncer e Peixes a triplicidade dos signos de Água.")
        significadoSignos.append("Sagitário é o nono signo astrológico do zodíaco, situado entre Escorpião e Capricórnio e associado à constelação de Sagittarius. Seu símbolo é o centauro. Forma com Áries e Leão a triplicidade dos signos do Fogo.")
        significadoSignos.append("Capricórnio é o décimo signo astrológico do zodíaco, situado entre Sagitário e Aquário e associado à constelação de Capricornus. Seu símbolo é uma cabra. Forma com Touro e Virgem a triplicidade dos signos da Terra.")
        significadoSignos.append("Aquário é o décimo primeiro signo astrológico do zodíaco, situado entre Capricórnio e Peixes e associado à constelação de Aquarius. Seu símbolo é o aguadeiro. Forma com Gêmeos e Libra a triplicidade dos signos do Ar.")
        significadoSignos.append("Peixes ou Piscis é o décimo segundo, e último signo astrológico do zodíaco, situado entre Aquário e Áries e associado à constelação de Pisces. Seu símbolo são dois peixes. Forma com Câncer e Escorpião a triplicidade dos signos da Água.")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celularReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celularReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertaController = UIAlertController(title: "Significado do signo "+signos[indexPath.row], message: significadoSignos[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present( alertaController, animated: true, completion: nil )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

