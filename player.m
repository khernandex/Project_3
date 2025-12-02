classdef player 
    % player - Holds information about the player 
  
    properties
        % Independent Variables
        name
        team
        hits
        walks
        atBats
        % Dependent Variables 
        average
        onBasepercent
    end

    methods
        function obj = player(name,team,hits,walks,atBats)
            % player - Saves the data of a certain player
            obj.name = name;
            obj.team = team;
            obj.hits = hits;
            obj.walks = walks;
            obj.atBats = atBats;
        end

        function average = get.average(obj)
            % get.average -  Calculates the average 
            average = obj.hits/obj.atBats;
        end
        function percent = get.onBasepercent(obj)
            percent = (obj.hits + obj.walks)/(obj.atBats + obj.walks);
        end
    end
end