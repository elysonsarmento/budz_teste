import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'module/profile/bloc/profive_bloc.dart';
import 'module/profile/view/profile.view.dart';
import 'module/profile_edit/view/page/delet_confirm_page.dart';
import 'module/profile_edit/view/page/delete_reason_page.dart';
import 'module/profile_edit/view/profile_edit_view.dart';
import 'widgets/icons/icons_string.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Container(
      color: Colors.red,
      child: const Center(
        child: Text('Tela Início'),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: Text('Tela grid'),
      ),
    ),
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Tela chat'),
      ),
    ),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/profile': (context) => const ProfileView(),
        '/profile_edit': (context) => const ProfileEditView(),
        '/delete_reason': (context) => const DeleteReasonPage(),
        '/delete_confirm': (context) => const DeleteCofirm(),
      },
      home: Scaffold(
        body: MultiBlocProvider(
          providers: [
            BlocProvider<ProfiveBloc>(
              create: (context) => ProfiveBloc(),
            ),
            BlocProvider<ProfiveBloc>(
              create: (context) => ProfiveBloc(),
            ),
          ],
          child: _screens[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedLabelStyle: const TextStyle(
              color: Color(
                0xFF2371EE,
              ),
              fontWeight: FontWeight.w600,
              fontSize: 12),
          unselectedLabelStyle: const TextStyle(
              color: Color(
                0xFF3A484D,
              ),
              fontWeight: FontWeight.w400,
              fontSize: 12),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                padding: _currentIndex == 0
                    ? const EdgeInsets.symmetric(horizontal: 12, vertical: 4)
                    : null,
                decoration: BoxDecoration(
                  color: const Color(0xFFDFFAFD),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(
                  homeIcon,
                  width: 16,
                  height: 16,
                  color: Color(
                    _currentIndex == 0 ? 0xFF2371EE : 0xFF3A484D,
                  ),
                ),
              ),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: _currentIndex == 1
                    ? const EdgeInsets.symmetric(horizontal: 12, vertical: 4)
                    : null,
                decoration: BoxDecoration(
                  color: const Color(0xFFDFFAFD),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(
                  gridIcon,
                  width: 16,
                  height: 16,
                  color: Color(
                    _currentIndex == 1 ? 0xFF2371EE : 0xFF3A484D,
                  ),
                ),
              ),
              label: 'Jornadas',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: _currentIndex == 2
                    ? const EdgeInsets.symmetric(horizontal: 12, vertical: 4)
                    : null,
                decoration: BoxDecoration(
                  color: const Color(0xFFDFFAFD),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(
                  smsIcon,
                  width: 16,
                  height: 16,
                  color: Color(
                    _currentIndex == 2 ? 0xFF2371EE : 0xFF3A484D,
                  ),
                ),
              ),
              label: 'Chatbot',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: _currentIndex == 3
                    ? const EdgeInsets.symmetric(horizontal: 12, vertical: 4)
                    : null,
                decoration: BoxDecoration(
                  color: const Color(0xFFDFFAFD),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(
                  personIcon,
                  width: 16,
                  height: 16,
                  color: Color(
                    _currentIndex == 3 ? 0xFF2371EE : 0xFF3A484D,
                  ),
                ),
              ),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}
