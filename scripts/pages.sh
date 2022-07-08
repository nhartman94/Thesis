echo + [$(date "+%Y-%m-%d-%Hh%Mm%Ss")] $(pdfinfo main.pdf | grep Pages | tr -d "Pages: ") $(texcount -sum -total -merge main.tex  | grep "Sum count:" | tr -d "Sum count: ") >> pages.md
python scripts/plot_pages.py
