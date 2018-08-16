#! /usr/bin/perl

use strict;
use warnings;

$a=$a+2

if (condition) {
    instructions;
}
else
{
    instructions;
}

#création d'un tableau
my @noms = ("pim","pam","poum");

#on appelle un élément par sa position dans l'index
print "$noms[0]";

push(@noms, "adrien");  --Ajoute un élément à la fin du tableau
unshift(@noms, "adeline"); --Ajoute un élément au début du tableau
pop(@noms);                --Supprime le dernier élément du tableau
shift(@noms);              -- Supprime le premier élément du tableau


#Exemple de suppression du 4ème élément (index 3) :
delete $noms[3];

$copains = "Adrien-Adeline-Mathieu-Marie-Nathalie-Elise";


#création d'un tableau avec split :

@tab = split('séparateur', $chaine);


#pour revenir, on utilise join :

$chaine = join('séparateur',@tab);

#tri alphabétique d'un tableau

@tab= sort(@tab);

#tableau des arguments

foreach (@ARGV)
{
    print $_."\n";
}

#exemple de fonction

sub doubler() {
    my $nb = $_[0]; #Premier argument du tableau des arguments
    $nb = $nb*2;
    return $nb;
}

#Ouvrir un fichier en lecture seule.

open ( HANDLER, "<", $fic ); # OU open ( HANDLER, $fic );
while ( <HANDLER> ) {
    chomp; # Supprime le saut de ligne
    print "$_\n";
}
close ( HANDLER );



#Ouvrir un fichier en écriture. (Ecrase tout ce qu'il y a dedans et le créé si existe pas)
open ( HANDLER, ">", $fic );
print HANDLER "Coucou!\n";
close ( HANDLER );



#Ouvrir un fichier en écriture. (écrit à la fin si existe et le créé si existe pas)

open ( HANDLER, ">>", $fic );
print HANDLER "Coucou ajouté!\n";
close ( HANDLER );


#Longueur d'une chaîne
my $chaine = "coolympique";
my $longueur = length $chaine;
print "La chaine '$chaine' contient $longueur caractères.";
 


#Récupérer une saisie au clavier

print "Comment vous appelez-vous ? ";
my $nom = <>; # Récupération du nom de l'utilisateur
chomp $nom;   # Retrait du saut de ligne
print "Bonjour, $nom !\n";
 



#Test de variable définie

my $v;
if ( defined $v ) {
    print "La variable \$v est définie !\n";
} else {
    print "La variable \$v n'est pas définie !\n";
}



#Voici un exemple simple pour tester l'OS sur lequel le script s'exécute.

use Encode qw(encode decode);
my $os = $^O;
my $msg = "Bonjour à tous ! Est-ce que ça va bien ?";
if ( $os eq "MSWin32")
    {
        print "On utilise PERL sous Windows bouhhhhh !\n";
        $msg = encode( 'cp437' , $msg);
        print "$msg\n";
    }
    else
    {
        print "On utilise PERL sous Linux yeahhhhhh !\n";
        $msg = encode( 'utf-8' , $msg);
        print "$msg\n";
}