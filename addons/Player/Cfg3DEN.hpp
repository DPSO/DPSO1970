class ctrlToolbox;

class Cfg3DEN {
    class Attributes {
        class Default;
        class Title: Default {
            class Controls {
                class Title;
            };
        };
        class GroupSelect: Title {
            attributeLoad = "(_this controlsGroupCtrl 100) lbSetCurSel (((_value + 1) min 7) max 0);";
            attributeSave = "(lbCurSel (_this controlsGroupCtrl 100)) - 1";
            class Controls: Controls {
                class Title: Title{};
                class Value: ctrlToolbox {
                    idc = 100;
                    style = "0x02";
                    x = "48 * (pixelW * pixelGrid * 0.50)";
                    w = "75 * (pixelW * pixelGrid * 0.50)";
                    h = "5 * (pixelH * pixelGrid * 0.50)";
                    rows = 1;
                    columns = 12;
                    strings[] = {"None", "990", "991", "992", "993", "994", "995", "996","997", "998", "999", "Bolo"};
                };
            };
        };
    };
    class Object {
        class AttributeCategories {
            class dpso_attributes {
                displayName = "dpso_1970s";
                collapsed = 1;
                class Attributes {
                    class dpso_Group_Preset {
                        property = QUOTE(dpso_Group_Preset);
                        control = GroupSelect;
                        displayName = "dpso Preset Group:";
                        tooltip = "Default Preset for Patches & TFAR Radio Frequencies.";
                        expression = "[_this, _value] call dpso_fnc_ConfigPlayer;";
                        typeName = "STRING";
                        condition = "objectBrain";
                        defaultValue = "-1";
                    };
                    class dpso_Pilot {
                        property = QUOTE(dpso_Pilot);
                        control = "Checkbox";
                        displayName = "Pilot";
                        tooltip = "Set the player to Pilot to allow them in the Pilot seat of aircraft.";
                        expression = "_this setUnitTrait ['Pilot', _value, true];";
                        typeName = "BOOL";
                        condition = "objectBrain";
                        defaultValue = "(false)";
                    };
                    class dpso_Mission_Maker {
                        property = QUOTE(dpso_Mission_Maker);
                        control = "Checkbox";
                        displayName = "Mission Maker";
                        tooltip = "Define this player as Mission Maker to allow access to further mission controls.";
                        expression = "_this setUnitTrait ['Mission Maker', _value, true];";
                        typeName = "BOOL";
                        condition = "objectBrain";
                        defaultValue = "(false)";
                    };
                    class dpso_Instructor {
                        property = QUOTE(dpso_Instructor);
                        control = "Checkbox";
                        displayName = "Instructor";
                        tooltip = "Define this player as Instructor to allow access to any valid Instructor Controls - Only used with Training Functions.";
                        expression = "_this setUnitTrait ['Instructor', _value, true];";
                        typeName = "BOOL";
                        condition = "objectBrain";
                        defaultValue = "(false)";
                    };
                         class dpso_DefaultLoadout {
                        property = QUOTE(dpso_DefaultLoadout);
                        control = "Checkbox";
                        displayName = "dpso Preset Loadout";
                        tooltip = "Use Preset Loadout for this player type if available.";
                        expression = "if (_value IsEqualTo true) then { [_this] call dpso_fnc_Loadouts;}";
                        typeName = "BOOL";
                        condition = "objectBrain";
                        defaultValue = "(false)";
                    };
                };
            };
        };
    };
};