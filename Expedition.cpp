#include <SFML/Graphics.hpp>
#include <Imgui/imgui.h>
#include <Imgui/imgui-SFML.h>

#include <Sol2/sol.hpp>
#include <iostream>

int main() {
	sf::RenderWindow window(sf::VideoMode(640, 480), "ImGui + SFML = <3");
	window.setFramerateLimit(60);
	ImGui::SFML::Init(window);

	sf::CircleShape shape(100.f);
	shape.setFillColor(sf::Color::Green);
	sol::state lua;
	lua.open_libraries();

	sf::Clock deltaClock;
	while (window.isOpen()) {
		sf::Event event;
		while (window.pollEvent(event)) {
			ImGui::SFML::ProcessEvent(event);

			if (event.type == sf::Event::Closed) {
				window.close();
			}
		}

		ImGui::SFML::Update(window, deltaClock.restart()); 
		static char str0[128] = "Hello, world!";

		ImGui::Begin("Hello, world!");
		ImGui::InputText("", str0, 128);
		if (ImGui::Button("Look at this pretty button")) {
			std::cout << "button: '" << str0 << "'" << std::endl; 
			lua.script(str0);
			str0[0] = '\0';
		}
		ImGui::End();

		window.clear();
		window.draw(shape);
		ImGui::SFML::Render(window);
		window.display();
	}

	ImGui::SFML::Shutdown();
}