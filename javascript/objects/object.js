// https://dmitripavlutin.com/check-if-object-has-property-javascript/

const hero = {
    name: 'Batman'
};

hero.hasOwnProperty('name');     // => true
hero.hasOwnProperty('realName'); // => false


'name' in hero;     // => true
'realName' in hero; // => false


hero.name !== undefined;     // => true
hero.realName !== undefined; // => false


const hero2 = {
    name: undefined
};

hero2.name !== undefined; // => false