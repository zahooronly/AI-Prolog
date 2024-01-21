% Predicate to take user input for issue code
take_input :-
    write('Enter the issue code: '),
    read(IssueCode),
    handle_input(IssueCode).

% Predicate to handle the input and retrieve the solution
handle_input(IssueCode) :-
    get_solution(IssueCode, Issue, Description, Solution),
    format('Issue: ~w~nPossible Reasons: ~w~nSolution: ~w~n', [Issue, Description, Solution]).

% Expert System for Computer, Laptop, and Mobile Issues

% Rules for Issues and Solutions

% Computer Issues
issue_solution('C001', 'Computer not turning on', 
    'Possible reasons could be a faulty power supply, dead battery, or motherboard issue. Solution: Check power connections, try a different power outlet, or replace the battery if needed.').

issue_solution('C002', 'No display on the screen', 
    'This could be due to a faulty display, graphics card issue, or loose connections. Solution: Check display connections, try an external monitor, or update graphics drivers.').

issue_solution('C003', 'Computer overheating', 
    'Common reasons include blocked vents, excessive dust, or a malfunctioning fan. Solution: Clean vents, use a cooling pad, or replace the fan if necessary.').

issue_solution('C004', 'Computer running slow', 
    'Possible reasons are low memory, too many background processes, or malware. Solution: Close unnecessary programs, run antivirus scans, or upgrade RAM.').

issue_solution('C005', 'Blue screen of death (BSOD)', 
    'This might be due to hardware or driver issues. Solution: Update drivers, check for hardware problems, or perform a system restore.').

issue_solution('C006', 'Wi-Fi connectivity issues', 
    'Possible reasons include router problems, driver issues, or interference. Solution: Restart the router, update drivers, or move closer to the router.').

issue_solution('C007', 'Computer freezing randomly', 
    'This could be due to software conflicts, hardware issues, or overheating. Solution: Update software, check hardware temperatures, or run diagnostic tests.').

issue_solution('C008', 'Disk full or low space', 
    'Possible reasons are large files, excessive downloads, or unoptimized software. Solution: Delete unnecessary files, uninstall unused programs, or upgrade storage.').

issue_solution('C009', 'USB ports not working', 
    'This might be due to driver issues, hardware problems, or dust accumulation. Solution: Update drivers, clean ports, or check for hardware faults.').

issue_solution('C010', 'Computer shutting down randomly', 
    'Possible reasons include overheating, power supply issues, or hardware faults. Solution: Check for overheating, test the power supply, or diagnose hardware problems.').

% Laptop Issues
issue_solution('L001', 'Laptop running slowly', 
    'Possible reasons are low memory, too many background processes, or malware. Solution: Close unnecessary programs, run antivirus scans, or upgrade RAM.').

issue_solution('L002', 'Laptop overheating', 
    'Common reasons include blocked vents, excessive dust, or a malfunctioning fan. Solution: Clean vents, use a cooling pad, or replace the fan if necessary.').

issue_solution('L003', 'Laptop not charging', 
    'Possible reasons could be a faulty charger, damaged charging port, or battery issue. Solution: Try a different charger, check the charging port for debris, or replace the battery.').

issue_solution('L004', 'Laptop screen flickering', 
    'This might be due to driver issues, loose connections, or a failing screen. Solution: Update drivers, check connections, or replace the screen if needed.').

issue_solution('L005', 'Keyboard keys not working', 
    'Possible reasons include dust accumulation, liquid spills, or hardware failures. Solution: Clean the keyboard, check for liquid damage, or replace the keyboard.').

issue_solution('L006', 'Laptop BIOS error', 
    'This could be due to corrupt BIOS settings or hardware issues. Solution: Reset BIOS settings, update BIOS firmware, or check for hardware faults.').

issue_solution('L007', 'Laptop battery not charging fully', 
    'Possible reasons include a worn-out battery, charging cycle issues, or software problems. Solution: Replace the battery, calibrate the battery, or update software.').

issue_solution('L008', 'Laptop not booting to OS', 
    'This might be due to corrupt OS files, hard drive issues, or BIOS settings. Solution: Repair the OS, check hard drive health, or reset BIOS settings.').

issue_solution('L009', 'Laptop fan making noise', 
    'Common reasons are dust accumulation, fan bearing issues, or loose components. Solution: Clean the fan, lubricate bearings, or check for hardware connections.').

issue_solution('L010', 'Laptop screen black after booting', 
    'This might be due to a failed display, graphics card issues, or software errors. Solution: Check hardware connections, update drivers, or perform system troubleshooting.').

% Mobile Issues
issue_solution('M001', 'Mobile battery draining quickly', 
    'This might be due to background apps, battery age, or poor network signals. Solution: Close unused apps, replace the battery if old, or check for network coverage.').

issue_solution('M002', 'Mobile screen not responding', 
    'Possible reasons are a frozen system, screen damage, or software issues. Solution: Restart the device, check for physical damage, or perform a software update.').

issue_solution('M003', 'Mobile overheating', 
    'Overuse, excessive apps running in the background, or faulty hardware may cause this. Solution: Close unused apps, give the device a break, or check for hardware issues.').

issue_solution('M004', 'Mobile camera not working', 
    'This might be due to software glitches, hardware issues, or permission settings. Solution: Restart the device, update camera app, or check hardware connections.').

issue_solution('M005', 'Mobile apps crashing frequently', 
    'Possible reasons include outdated apps, software conflicts, or low memory. Solution: Update apps, clear cache, or free up device memory.').

issue_solution('M006', 'Mobile not connecting to Wi-Fi', 
    'This might be due to router issues, network settings, or software glitches. Solution: Restart the router, reset network settings, or update device software.').

issue_solution('M007', 'Mobile speaker not working', 
    'Possible reasons are software glitches, hardware issues, or muted settings. Solution: Restart the device, check audio settings, or test with headphones.').

issue_solution('M008', 'Mobile not charging', 
    'This could be due to faulty cables, charging port issues, or battery problems. Solution: Use a different cable, clean the charging port, or replace the battery.').

issue_solution('M009', 'Mobile screen cracked', 
    'Mostly caused by physical damage or accidental drops. Solution: Replace the screen or visit a repair center for professional help.').

issue_solution('M010', 'Mobile touch screen not responsive', 
    'Possible reasons include a frozen system, screen damage, or software errors. Solution: Restart the device, check for physical damage, or perform a software update.').

% Query Predicate to Retrieve Solutions

get_solution(IssueCode, Issue, Description, Solution) :-
    issue_solution(IssueCode, Issue, Description, Solution).