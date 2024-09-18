$programs_dir='C:\Users\28178564\AppData\Local\Programs'
$banner = "="*50

# Go to C:\Users\28178564
echo $banner
echo "Switching to local file system" ""
cd $home

# Set windows to dark mode
# Use '-Value 1' for light mode
echo $banner
echo "" "Switching to dark mode" ""
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0

# Start chrome
echo ""
echo $banner
echo "Starting chrome" 
start chrome

# Install git
echo $banner
echo "" "Installing git" ""
winget install --id Git.Git --location "$programs_dir\Git"

# Install vim
echo ""
echo $banner
echo "Installing vim"
echo ""
winget install --id vim.vim --location $programs_dir

# Add packages to path
echo ""
echo $banner
echo "Adding packages to path" 
echo ""
$env:Path += 'C:\Users\28178564\AppData\Local\Programs\Git\cmd;';
$env:Path += 'C:\Users\28178564\AppData\Local\Programs\vim91;';



echo ""
echo $banner
echo "Setup complete"