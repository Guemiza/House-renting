<?php

namespace AppBundle\Controller;


use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
//IMPORT USER ENTITY
use AppBundle\Entity\Ad;
use AppBundle\Entity\Category;
//FORM TYPE
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\FileType;


class AdController extends Controller
{

    /**
    * @Route("/ad/sell/new/", name="create_sell")
    */

    public function Selling(Request $request){
        $ad = new Ad();
        $cat = new Category();
        $cat=$this->getDoctrine()->getRepository(Category::class);
        $form = $this->createFormBuilder($ad)
            ->add('Title', TextType::class)
            ->add('Category', ChoiceType::class, [
            'choices' => [
                'Maison' => $cat->find(1),
                'Terrain' =>  $cat->find(2),
                'Appartement' =>  $cat->find(3),
                'Local Commercial' =>  $cat->find(4),
            ],
            ])
            ->add('Description', TextareaType::class)
            ->add('Photos', FileType::class)
            ->add('Price', MoneyType::class)
            ->add('Rooms', TextType::class)
            ->add('Bedrooms', TextType::class)
            ->getForm();

            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {                
                $title = $form['Title']->getData();
                $categorie = $form['Category']->getData();
                $description = $form['Description']->getData();
                $photos = $form['Photos']->getData();
                $price = $form['Price']->getData();
                $rooms = $form['Rooms']->getData();
                $bedrooms = $form['Bedrooms']->getData();

                $ad->setTitle($title);
                $ad->setCategory($categorie);
                $ad->setDescription($description);
                $ad->setPhotos($photos);
                $ad->setPrice($price);
                $ad->setRooms($rooms);
                $ad->setBedrooms($bedrooms);
                
                $em=$this->getDoctrine()->getManager();
                $em->persist($ad);
                $em->flush();
                return $this->redirectToRoute('security_login');
            }
            return $this->render('ad/createAdsell.html.twig', array(
                'form' => $form->createView(),             
            ));
        }
    public function Location(Request $request){
        
    }
    
}
