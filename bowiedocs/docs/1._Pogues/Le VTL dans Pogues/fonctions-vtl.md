# Fonctions VTL et usages

## Liste de fonctions
### Les plus utilisés
| Method      | Description                          |
| ----------- | ------------------------------------ |
| [**`nvl`**](fonctions-vtl.md/#nvl)       | Permet de gérer la nullité    |
| [**`cast`**](fonctions-vtl.md/#cast)       | Permet de changer le tye de la donnée    |

## Détail des fonctions
##### nvl
!!! abstract "Utilisation"
    ```
    nvl(var, default_value)
    ```

    - `var` : variable sur laquelle on applique le transtypage
    - `type` : type dans lequel on veut formater la variable

=== "Texte"

    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `"mon texte"`      | `nvl($MA_VARIABLE$, "valeur par défaut")`   | `"mon texte"` |
    | `null`      | `nvl($MA_VARIABLE$, "valeur par défaut")`   | `"valeur par défaut"` |
    | `null`      | `nvl($MA_VARIABLE$, "")`   | `""` |
    | `""`      | `nvl($MA_VARIABLE$, "")`   | `""` |
    | `""`      | `nvl($MA_VARIABLE$, "autre valeur par défaut")`   | `""` |


=== "Nombre"

    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `18`      | `nvl($MA_VARIABLE$, 25)`   | `18` |
    | `null`      | `nvl($MA_VARIABLE$, 25)`   | `25` |
    | `null`      | `nvl($MA_VARIABLE$, 0)`   | `0` |
    | `0`      | `nvl($MA_VARIABLE$, 0)`   | `0` |
    | `0`      | `nvl($MA_VARIABLE$, 12)`   | `0` |


##### cast
!!! abstract "Utilisation"
    ```
    cast(var, type)
    ```

    - `var` : variable sur laquelle on applique le transtypage
    - `type` : type dans lequel on veut formater la variable

=== "Texte"

    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `18`      | `cast($MA_VARIABLE$, string)`   | `"18"` |
    | `"18"`      | `cast($MA_VARIABLE$, string)`   | `"18"` |


=== "Nombre"

    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `"25"`      | `cast($MA_VARIABLE$, integer)`   | `25` |
    | `25`      | `cast($MA_VARIABLE$, integer)`   | `25` |

=== "Booléen"

    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `0`      | `cast($MA_VARIABLE$, boolean)`   | `false` |
    | `1`      | `cast($MA_VARIABLE$, boolean)`   | `true` |
    | `"true"`      | `cast($MA_VARIABLE$, boolean)`   | `true` |
    | `true`      | `cast($MA_VARIABLE$, boolean)`   | `true` |




!!! info
    Il est parfois nécessaire de passer d’un type de variable à un autre, on parle dans ce cas de transtypage.

    Par exemple, si l’on veut extraire l’année de la date du jour, on va dans un premier temps transformer cette date en chaîne :