import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 190,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 16,bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Flutter tips',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text('Build your career with nadeen mohamed',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16.0,
                ),),
              ),
              trailing: IconButton(onPressed: (){},icon: const Icon(Icons.delete_rounded,color: Colors.black,size: 40,)),
              
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text('Aug 21, 2024',
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}