// Este programa permite calcular el promedio de notas de un estudiante en C++.
// El usuario ingresa las notas del primer, segundo, y tercer parcial, así como del examen final.
// Luego, el programa calcula el promedio y clasifica el rendimiento del estudiante utilizando estructuras,
// repetitivas (while) para ingresar las notas y estructuras selectivas (if, else if) para evaluar el rendimiento.


#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main() {
    string nombre, apellido, curso;
    vector<double> notas;
    double nota, total_notas, promedio;
    char continuar;

    do {
        cout << "Ingrese el nombre del estudiante: ";
        getline(cin, nombre);
        cout << "Ingrese el apellido del estudiante: ";
        getline(cin, apellido);
        cout << "Ingrese el curso del estudiante: ";
        getline(cin, curso);

        total_notas = 0;
        notas.clear();

        while (true) {

            cout << "Ingrese la Nota del Primer parcial: ";
            cin >> nota;
            if (nota < 0) break;
            notas.push_back(nota);
            total_notas += nota;

            cout << "Ingrese la Nota del Segundo parcial: ";
            cin >> nota;
            if (nota < 0) break;
            notas.push_back(nota);
            total_notas += nota;

            cout << "Ingrese la Nota del Tercer parcial: ";
            cin >> nota;
            if (nota < 0) break;
            notas.push_back(nota);
            total_notas += nota;

            cout << "Ingrese la Nota del Examen final: ";
            cin >> nota;
            if (nota < 0) break;
            notas.push_back(nota);
            total_notas += nota;

            cout << "Ingrese un valor negativo para terminar: ";
            cin >> nota;
            if (nota < 0) break;
            notas.push_back(nota);
            total_notas += nota;

            break;
        }

        promedio = (notas.empty()) ? 0 : total_notas / notas.size();

        string rendimiento;
        if (promedio >= 90) {
            rendimiento = "Sobresaliente";
        } else if (promedio >= 75) {
            rendimiento = "Bueno";
        } else if (promedio >= 50) {
            rendimiento = "Regular";
        } else {
            rendimiento = "Insuficiente";
        }

        cout << "\nEl estudiante " << nombre << " " << apellido << " del curso " << curso << " tiene un promedio de " << promedio << "." << endl;
        cout << "Rendimiento: " << rendimiento << endl;

        if (rendimiento == "Sobresaliente") {
            cout << "¡Felicidades " << nombre << " " << apellido << ", eres sobresaliente con un promedio de " << promedio << "!" << endl;
        } else if (rendimiento == "Bueno") {
            cout << "Buen trabajo " << nombre << " " << apellido << ", tu rendimiento es bueno con un promedio de " << promedio << "." << endl;
        } else if (rendimiento == "Regular") {
            cout << nombre << " " << apellido << ", tu rendimiento es regular en el curso con un promedio de " << promedio << "." << endl;
        } else {
            cout << nombre << " " << apellido << ", tu rendimiento es insuficiente con un promedio de " << promedio << "." << endl;
        }

        cout << "\n¿Quieres calcular el promedio para otro estudiante? (s/n): ";
        cin >> continuar;
        cin.ignore(); 

        notas.clear();
        total_notas = 0;

    } while (continuar == 's' || continuar == 'S');

    cout << "¡Gracias por consultar!" << endl;
    return 0;
}