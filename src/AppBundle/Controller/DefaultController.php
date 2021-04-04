<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
//FORM TYPE
use Symfony\Component\Form\Extension\Core\Type\SearchType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class DefaultController extends Controller
{

    /**
    * @Route("/", name="home")
    */

     public function index(Request $request)
    {
        $form = $this->createFormBuilder()
            ->add('Category', ChoiceType::class, array(
                    'choices' => array(
                            'Maison' => 'stock_yes',
                            'Terrain' => 'stock_no',
                            'Appartement' => 'stock_no',
                            'Local Commercial' => 'stock_no',
                    ),
            ))
            ->add('MinPrice', SearchType::class)
            ->add('MaxPrice', SearchType::class)
            ->getForm();
        return $this->render('default/index.html.twig', array(
            'form' => $form->createView(),             
        ));
    }

/**
 * @Route("/tobuy/create/annonce", name="create_tobuy")
 */
/*
    public function tobuy_create_annonce(){
        $form = $this->createFormBuilder()
            ->add('Zone', TextType::class)
            ->add('Numero_De_Chambre', TextType::class)
            ->add('Les_etages', TextType::class)
            ->add('Prix', TextType::class)
            ->add('Image', TextType::class)
            ->add('Les_Avis', TextType::class)
            ->add('Commentaire', TextType::class)
            ->getForm();
            return $this->render('default/tobuy_create.html.twig', array(
                'form' => $form->createView(),             
        ));
    }
*/
    /**
 * @Route("/tobuy/create/annonce", name="create_tobuy")
 */
/*
public function alloc_create_annonce(){
    $form = $this->createFormBuilder()
        ->add('Zone', TextType::class)
        ->add('Numero_De_Chambre', TextType::class)
        ->add('Les_etages', TextType::class)
        ->add('Prix', TextType::class)
        ->add('Image', TextType::class)
        ->add('Les_Avis', TextType::class)
        ->add('Commentaire', TextType::class)
        ->getForm();
        return $this->render('default/tobuy_create.html.twig', array(
            'form' => $form->createView(),             
    ));
}

*/
}
