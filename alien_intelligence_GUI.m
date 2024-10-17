function alien_intelligence_GUI()
    % Create a figure window
    hFig = figure('Position', [100, 100, 600, 400], 'MenuBar', 'none', ...
                  'Name', 'Alien Intelligence on Earth', ...
                  'NumberTitle', 'off', 'Resize', 'off', ...
                  'Color', [0.9, 0.9, 1]);

    % Add title text
    uicontrol('Style', 'text', 'Position', [50, 350, 500, 30], ...
              'String', 'Welcome to Alien Intelligence Explorer!', ...
              'FontSize', 14, 'FontWeight', 'bold', ...
              'BackgroundColor', [0.9, 0.9, 1]);

    % Create buttons for different types of intelligence
    uicontrol('Style', 'pushbutton', 'String', 'Homo Sapiens (Humans)', ...
              'Position', [50, 250, 200, 50], ...
              'Callback', @(src, event) show_human_intelligence());

    uicontrol('Style', 'pushbutton', 'String', 'Dolphin Communication', ...
              'Position', [350, 250, 200, 50], ...
              'Callback', @(src, event) show_dolphin_intelligence());

    uicontrol('Style', 'pushbutton', 'String', 'Ant Colony Strategies', ...
              'Position', [50, 150, 200, 50], ...
              'Callback', @(src, event) show_ant_intelligence());

    uicontrol('Style', 'pushbutton', 'String', 'Crow Problem Solving', ...
              'Position', [350, 150, 200, 50], ...
              'Callback', @(src, event) show_crow_intelligence());

    % Create area for displaying information
    global hText;
    hText = uicontrol('Style', 'text', 'Position', [50, 50, 500, 80], ...
                      'String', '', 'FontSize', 12, ...
                      'BackgroundColor', [0.9, 0.9, 1]);

    function show_human_intelligence()
        animate_button('Homo Sapiens!');
        hText.String = 'Humans: The only species that can forget where they placed their keys! 🤔';
    end

    function show_dolphin_intelligence()
        animate_button('Dolphins!');
        hText.String = 'Dolphins: Known for their clicks and whistles... not just music lovers! 🎶';
    end

    function show_ant_intelligence()
        animate_button('Ants!');
        hText.String = 'Ants: They can lift 50 times their weight... but still can’t decide where to build a hill! 🐜';
    end

    function show_crow_intelligence()
        animate_button('Crows!');
        hText.String = 'Crows: They can recognize human faces... and hold a grudge! 🦅';
    end

    function animate_button(type)
        % Simple animation effect
        oldColor = hText.BackgroundColor;
        hText.BackgroundColor = [1, 0.8, 0.8]; % Change to a pink-ish color
        pause(0.2);
        hText.BackgroundColor = oldColor; % Reset to original color
        msgbox(['You selected: ', type], 'Inquisitive Alien Alert!', 'help');
    end
end