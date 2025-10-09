import re
import pprint as skull


a = ""

with open("nonveg.md", 'r') as file:
    a = file.read()


recipe_obj = re.compile(r'(?:\-\-\-\n)?(^\W+\d+\.\s.*?$)(.*?)(?=(?:^\W+\d+\.\s.*?$)|\Z)', re.S | re.M)

ab = recipe_obj.finditer(a)

section_obj = re.compile(r'(?:(Ingredients|Method|Benefits|Calories|Cost)\:)(.*?)(?:\n)?(?=(?:(?:Ingredients|Method|Benefits|Calories|Cost)\:|\Z).*?)', re.S | re.M)

recipes = {}

for i, match in enumerate(ab):
    recipe = {}
    hehe = section_obj.finditer(match.group(2))
    for sections in hehe:
        recipe[sections.group(1)] = sections.group(2)
    recipes[match.group(1)] = recipe

skull.pprint(recipes)


